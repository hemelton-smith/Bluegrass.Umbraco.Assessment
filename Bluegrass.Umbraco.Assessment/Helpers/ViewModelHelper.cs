using Bluegrass.Umbraco.Assessment.umbraco.models.ViewModels;
using Umbraco.Cms.Core.Models;
using Umbraco.Cms.Core.Models.Blocks;
using Umbraco.Cms.Core.Models.PublishedContent;

namespace Bluegrass.Umbraco.Assessment.Helpers
{
    public static class ViewModelHelper
    {
        public static object? ConvertToViewModel(BlockGridItem block)
        {
            switch (block.Content.ContentType.Alias)
            {
                case "heroBlock":
                    return new HeroBlockViewModel
                    {
                        Title = block.Content.Value<string>("heroTitle") ?? "",
                        Description = block.Content.Value<string>("heroDescription") ?? "",
                        ImageUrl = block.Content.Value<IPublishedContent>("heroImage")?.Url() ?? ""
                    };

                case "heroCTABlock":
                    return new HeroCTABlockViewModel
                    {
                        Title = block.Content.Value<string>("ctaTitle") ?? "",
                        Description = block.Content.Value<string>("ctaDescription") ?? "",
                        ImageUrl = block.Content.Value<IPublishedContent>("ctaImage")?.Url() ?? "",
                        CtaUrl = block.Content.Value<Link>("ctaUrl")?.Url ?? ""
                    };

                case "rteBlock":
                    return new RTEBlockViewModel
                    {
                        Content = block.Content.Value<string>("rteContent") ?? ""
                    };

                default:
                    return null;
            }
        }
    }
}
