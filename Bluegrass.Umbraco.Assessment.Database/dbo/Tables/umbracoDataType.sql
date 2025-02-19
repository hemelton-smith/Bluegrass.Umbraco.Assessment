CREATE TABLE [dbo].[umbracoDataType] (
    [nodeId]                INT            NOT NULL,
    [propertyEditorAlias]   NVARCHAR (255) NOT NULL,
    [propertyEditorUiAlias] NVARCHAR (255) NULL,
    [dbType]                NVARCHAR (50)  NOT NULL,
    [config]                NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_umbracoDataType] PRIMARY KEY CLUSTERED ([nodeId] ASC),
    CONSTRAINT [FK_umbracoDataType_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
);

