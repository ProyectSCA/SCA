using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SCA.Startup))]
namespace SCA
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
