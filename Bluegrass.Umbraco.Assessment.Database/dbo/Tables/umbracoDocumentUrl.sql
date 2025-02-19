CREATE TABLE [dbo].[umbracoDocumentUrl] (
    [id]         INT              IDENTITY (1, 1) NOT NULL,
    [uniqueId]   UNIQUEIDENTIFIER NOT NULL,
    [isDraft]    BIT              NOT NULL,
    [languageId] INT              NOT NULL,
    [urlSegment] NVARCHAR (255)   NOT NULL,
    CONSTRAINT [PK_umbracoDocumentUrl] PRIMARY KEY NONCLUSTERED ([id] ASC),
    CONSTRAINT [FK_umbracoDocumentUrl_umbracoLanguage_id] FOREIGN KEY ([languageId]) REFERENCES [dbo].[umbracoLanguage] ([id]),
    CONSTRAINT [FK_umbracoDocumentUrl_umbracoNode_uniqueId] FOREIGN KEY ([uniqueId]) REFERENCES [dbo].[umbracoNode] ([uniqueId])
);


GO
CREATE UNIQUE CLUSTERED INDEX [IX_umbracoDocumentUrl]
    ON [dbo].[umbracoDocumentUrl]([uniqueId] ASC, [languageId] ASC, [isDraft] ASC);

