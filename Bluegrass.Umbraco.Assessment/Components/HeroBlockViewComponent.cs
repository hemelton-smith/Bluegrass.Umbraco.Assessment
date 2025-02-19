using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace Bluegrass.Umbraco.Assessment.Components
{
    public class HeroBlockViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke(HeroBlockViewModel model)
        {
            return View(model);
        }
    }
}
