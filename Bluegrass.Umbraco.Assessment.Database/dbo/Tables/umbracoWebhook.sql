CREATE TABLE [dbo].[umbracoWebhook] (
    [id]      INT              IDENTITY (1, 1) NOT NULL,
    [key]     UNIQUEIDENTIFIER NOT NULL,
    [url]     NVARCHAR (MAX)   NOT NULL,
    [enabled] BIT              NOT NULL,
    CONSTRAINT [PK_umbracoWebhook] PRIMARY KEY CLUSTERED ([id] ASC)
);

