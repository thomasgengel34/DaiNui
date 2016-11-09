namespace Ingredients1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Ingredient
    {
        [Key]
        public int Ingredient_ID { get; set; }

        [Required]
        [StringLength(50)]
        [Display(Name ="Short Description")]
        public string ShortDescription { get; set; }

        [Required]
        [Display(Name = "Description" )]
        public string LongDescription { get; set; }

        [Column(TypeName = "numeric")]
        [Display(Name = "Serving Size ")]
        public decimal? ServingSize { get; set; }

        [Display(Name = "Serving Size Unit")]
        public int ServingSizeUnit { get; set; }

        public short? Calories { get; set; }

        [Display(Name = "Fat Cals")]
        public short? CalFromFat { get; set; }

        [Display(Name = "Total Fat (g) ")]
        public decimal? TotalFat { get; set; }

        [Display(Name = "Sat. Fat (g) ")]
        public decimal? SaturatedFat { get; set; }

        [Display(Name = "Trans Fat (g) ")]
        public decimal? TransFat { get; set; }

        [Display(Name = "Polyunsat. Fat (g) ")]
        public decimal? PolyUnsatFat { get; set; }

        [Display(Name = "Monounsat. Fat (g) ")]
        public decimal? MonounsatFat { get; set; }

        [Display(Name = "Cholesterol (mg) ")]
        public decimal? Cholesterol { get; set; }

        [Display(Name = "Sodium (mg) ")]
        public decimal? Sodium { get; set; }

        [Display(Name = "Total Carbohydrates (g) ")]
        public decimal? TotalCarbohydrates { get; set; }

        [Display(Name = "Protein (g) ")]
        public decimal? Protein { get; set; }
        [Display(Name = "Potassium (mg) ")]
        public decimal? Potassium { get; set; }

        [Display(Name = "Dietary Fiber (g) ")]
        public decimal? DietaryFiber { get; set; }

        [Display(Name = "Sugars (g) ")]
        public decimal? Sugars { get; set; }

        [Display(Name = "Vitamin A (%) ")]
        public int? VitaminA { get; set; }

        [Display(Name = "Vitamin C (%) ")]
        public int? VitaminC { get; set; }

        [Display(Name = "Calcium C (%) ")]
        public int? Calcium { get; set; }

        [Display(Name = "Iron (%) ")]
        public int? Iron { get; set; }

        [Display(Name = "Folic Acid (%) ")]
        public int? FolicAcid { get; set; }

        [Required]
        [StringLength(12)]
        [Display(Name = "void")]
        public string upc { get; set; }

        [Display(Name = "Servings per Container")]
        public decimal? servingspercontainer { get; set; }

        [Required]
        [StringLength(2)]
        public string Egg { get; set; }

        [Required]
        [StringLength(30)]
        [Display(Name = "Maker")]
        public string maker { get; set; }

        [Required]
        [StringLength(2)]
        public string Nuts { get; set; }

        [Required]
        [StringLength(2)]
        public string Milk { get; set; }

        [Required]
        [StringLength(2)]
        public string Wheat { get; set; }

        [Required]
        [StringLength(2)]
        public string Soy { get; set; }

        [StringLength(20)]
        public string Category { get; set; }

        [StringLength(10)]
        public string Corn { get; set; }

        [StringLength(10)]
        public string Onion { get; set; }

        [StringLength(10)]
        public string Garlic { get; set; }

        [Display(Name = "Sodium Nitrite")]
        [Column("Sodium Nitrite")]
        [StringLength(10)]
        public string Sodium_Nitrite { get; set; }

        [Display(Name = "UPC")]
        [StringLength(18)]
        public string longUPC { get; set; }
    }
}
