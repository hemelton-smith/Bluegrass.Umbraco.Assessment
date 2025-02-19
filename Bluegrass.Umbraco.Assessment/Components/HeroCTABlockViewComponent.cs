using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace Bluegrass.Umbraco.Assessment.Components
{
    public class HeroCTABlockViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke(HeroCTABlockViewModel model)
        {
            return View(model);
        }
    }

}
