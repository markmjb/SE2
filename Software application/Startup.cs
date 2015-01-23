using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Software_application.Startup))]
namespace Software_application
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
