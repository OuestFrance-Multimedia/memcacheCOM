using System;
using System.Collections.Generic;
using System.Text;
using BeIT.MemCached;
using System.Collections;
using System.Configuration;

namespace memcacheCOM
{
   public class memcache
   {
      private List<string> memcacheServers = new List<string>();
      private MemcachedClient cache = null;

      public memcache()
      {
         Console.WriteLine("Version memcacheCOM: 07062011 16:36");
      }

      public void addServer(string server)
      {
         this.memcacheServers.Add(server);
      }

      public void init()
      {
         string[] servers = this.memcacheServers.ToArray();

         try
         {
            MemcachedClient.Setup("MyCache", servers);
         }
         catch (ConfigurationErrorsException) { }
         
         this.cache = MemcachedClient.GetInstance("MyCache");          
      }

      public bool set(string key, object value, int time)
      {
         TimeSpan myTimeSpan = new TimeSpan(0, 0, time);
         return (this.cache.Set(key, value, myTimeSpan));
      }

      public object get(string key)
      {
         return (this.cache.Get(key));
      }

      public bool delete(string key)
      {
         return (this.cache.Delete(key));
      }

      public string getType(string key)
      {
         object myObject = this.cache.Get(key);
         return (myObject.GetType().FullName);

      }
      
   }
}
