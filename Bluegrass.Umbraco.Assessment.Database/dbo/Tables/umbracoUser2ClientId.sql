CREATE TABLE [dbo].[umbracoUser2ClientId] (
    [userId]   INT            NOT NULL,
    [clientId] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_umbracoUser2ClientId] PRIMARY KEY CLUSTERED ([userId] ASC, [clientId] ASC),
    CONSTRAINT [FK_umbracoUser2ClientId_umbracoUser_id] FOREIGN KEY ([userId]) REFERENCES [dbo].[umbracoUser] ([id])
);

