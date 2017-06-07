using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BlogProjectSon.DAL;
using BlogProjectSon.MODEL;
using System.Linq.Expressions;
using System.Data.Entity;

namespace BlogProjectSon.BLL
{

    public static class GenericBS<T> where T : class
    {
        static BlogDbEntities ctx = new BlogDbEntities();
        
        public static List<T> GetAll()
        {
            return ctx.Set<T>().ToList();
        }

        public static T GetSingleItemByCriteria(Expression<Func<T, bool>> criteria, params string[] includeList)
        {
            //AsNoTracking() ram'a cache lenmesini engeller 
            //anlık değişimlerin yansımasını sağlamak için
            IQueryable<T> dbSetCats = ctx.Set<T>().AsQueryable();
            foreach (string item in includeList)
            {
                dbSetCats = dbSetCats.Include(item);
            }
            return dbSetCats.SingleOrDefault(criteria);
        }

        public static List<T> GetListByCriteria<Tip>
            (
           Expression<Func<T, bool>> criteria,
           Expression<Func<T, Tip>> orderBy,
           SortDirection sortDirection,
           params string[] includeList
            )
        {
            IQueryable<T> dbSetCats = ctx.Set<T>().AsQueryable();
            foreach (string item in includeList)
            {
                dbSetCats = dbSetCats.Include(item);
            }
            dbSetCats = dbSetCats.Where(criteria);
            if (orderBy != null)
            {
                dbSetCats = dbSetCats.OrderBy(orderBy);
                if (sortDirection == SortDirection.Ascending)
                    dbSetCats = dbSetCats.OrderBy(orderBy);
                else
                    dbSetCats = dbSetCats.OrderByDescending(orderBy);
            }

            return dbSetCats.ToList();
        }

        public static List<T> GetListByCriteria
           (
          Expression<Func<T, bool>> criteria,
          params string[] includeList
           )
        {
            IQueryable<T> dbSetCats = ctx.Set<T>().AsQueryable();
            foreach (string item in includeList)
            {
                dbSetCats = dbSetCats.Include(item);
            }
            dbSetCats = dbSetCats.Where(criteria);
            

            return dbSetCats.ToList();
        }

        public static void Insert(T entity)
        {
            //ctx.Categories.Add(category);
            //ctx.SaveChanges();

            ctx.Entry<T>(entity).State = EntityState.Added;
            ctx.SaveChanges();
        }
        public static void Delete(T entity)
        {
            //ctx.Categories.Add(category);
            //ctx.SaveChanges();

            ctx.Entry<T>(entity).State = EntityState.Deleted;
            ctx.SaveChanges();
        }

        public static void Update(T entity)
        {
            //ctx.Categories.Add(category);
            //ctx.SaveChanges();

            ctx.Entry<T>(entity).State = EntityState.Modified;
            ctx.SaveChanges();
        }
    }
}
