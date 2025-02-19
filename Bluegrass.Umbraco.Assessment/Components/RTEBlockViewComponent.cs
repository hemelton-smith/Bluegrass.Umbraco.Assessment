using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace Bluegrass.Umbraco.Assessment.Components
{
    public class RTEBlockViewComponent : ViewComponent
    {
        public IViewComponentResult Invoke(RTEBlockViewModel model)
        {
            return View(model);
        }
    }

}
