namespace Ingredients1
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.ComponentModel.DataAnnotations ;
    using System.Linq;

    public partial class ADONETEntityDataModel : DbContext
    {
        public ADONETEntityDataModel()
            : base("name=ADONETEntityDataModel")
        {
        }

        public virtual DbSet<Ingredient> Ingredients { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Ingredient>()
                .Property(e => e.ServingSize)
                .HasPrecision(7, 3);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.TotalFat)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.SaturatedFat)
                .HasPrecision(6, 2) ;

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.TransFat)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.PolyUnsatFat)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.MonounsatFat)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Cholesterol)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Sodium)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.TotalCarbohydrates)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Protein)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Potassium)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.DietaryFiber)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Sugars)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.upc)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.servingspercontainer)
                .HasPrecision(6, 2);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Egg)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Nuts)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Milk)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Wheat)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Soy)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Corn)
                .IsUnicode(false);

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Onion)
                .IsFixedLength();

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Garlic)
                .IsFixedLength();

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.Sodium_Nitrite)
                .IsFixedLength();

            modelBuilder.Entity<Ingredient>()
                .Property(e => e.longUPC)
                .IsUnicode(false);
        }
    }
}
