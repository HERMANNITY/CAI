using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(aspTraining.Startup))]
namespace aspTraining
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
