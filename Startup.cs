using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Ingredients1.Startup))]
namespace Ingredients1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
