using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Wardrobe1Project.Startup))]
namespace Wardrobe1Project
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
