using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Microsoft.AspNetCore.Mvc;
using Umbraco.Cms.Core;

namespace Bluegrass.Umbraco.Assessment.Controllers
{
    public class BaseController : Controller
    {
        private readonly IPublishedContentQuery _contentQuery;

        public BaseController(IPublishedContentQuery contentQuery)
        {
            _contentQuery = contentQuery;
        }

        protected BaseViewModel GetGlobalSettings()
        {
            var siteNode = _contentQuery.ContentAtRoot().FirstOrDefault();

            return new BaseViewModel
            {
                SiteTitle = siteNode?.Value<string>("siteTitle"),
                HeaderHtml = siteNode?.Value<string>("headerHtml"),
                FooterHtml = siteNode?.Value<string>("footerHtml")
            };
        }
    }
}
