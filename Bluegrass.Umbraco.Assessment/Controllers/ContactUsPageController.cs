using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Umbraco.Cms.Core.Models.Blocks;
using Umbraco.Cms.Core.Models.PublishedContent;
using Umbraco.Cms.Core;
using Bluegrass.Umbraco.Assessment.Helpers;

namespace Bluegrass.Umbraco.Assessment.Controllers
{
    public class ContactUsPageController : BaseController
    {
        private readonly IPublishedContentQuery _contentQuery;

        public ContactUsPageController(IPublishedContentQuery contentQuery) : base(contentQuery)
        {
            _contentQuery = contentQuery;
        }

        public IActionResult Index(IPublishedContent content)
        {
            var model = new ContactUsPageViewModel
            {
                SiteTitle = GetGlobalSettings().SiteTitle,
                HeaderHtml = GetGlobalSettings().HeaderHtml,
                FooterHtml = GetGlobalSettings().FooterHtml,
                PageHeader = content.Value<IEnumerable<BlockGridItem>>("pageHeader")
                    .Select(b => ViewModelHelper.ConvertToViewModel(b)).ToList(),
                MainContent = content.Value<IEnumerable<BlockGridItem>>("mainContent")
                    .Select(b => ViewModelHelper.ConvertToViewModel(b)).ToList()
            };

            return View("Contact", model);
        }
    }

}
