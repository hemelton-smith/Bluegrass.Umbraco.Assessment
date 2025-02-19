﻿CREATE TABLE [dbo].[umbracoUser] (
    [id]                     INT              IDENTITY (1, 1) NOT NULL,
    [userDisabled]           BIT              CONSTRAINT [DF_umbracoUser_userDisabled] DEFAULT ('0') NOT NULL,
    [key]                    UNIQUEIDENTIFIER CONSTRAINT [DF_umbracoUser_key] DEFAULT (newid()) NOT NULL,
    [userNoConsole]          BIT              CONSTRAINT [DF_umbracoUser_userNoConsole] DEFAULT ('0') NOT NULL,
    [userName]               NVARCHAR (255)   NOT NULL,
    [userLogin]              NVARCHAR (125)   NOT NULL,
    [userPassword]           NVARCHAR (500)   NOT NULL,
    [passwordConfig]         NVARCHAR (500)   NULL,
    [userEmail]              NVARCHAR (255)   NOT NULL,
    [userLanguage]           NVARCHAR (10)    NULL,
    [securityStampToken]     NVARCHAR (255)   NULL,
    [failedLoginAttempts]    INT              NULL,
    [lastLockoutDate]        DATETIME         NULL,
    [lastPasswordChangeDate] DATETIME         NULL,
    [lastLoginDate]          DATETIME         NULL,
    [emailConfirmedDate]     DATETIME         NULL,
    [invitedDate]            DATETIME         NULL,
    [createDate]             DATETIME         CONSTRAINT [DF_umbracoUser_createDate] DEFAULT (getdate()) NOT NULL,
    [updateDate]             DATETIME         CONSTRAINT [DF_umbracoUser_updateDate] DEFAULT (getdate()) NOT NULL,
    [kind]                   INT              CONSTRAINT [DF_umbracoUser_kind] DEFAULT ('0') NOT NULL,
    [avatar]                 NVARCHAR (500)   NULL,
    CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUser_userKey]
    ON [dbo].[umbracoUser]([key] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin]
    ON [dbo].[umbracoUser]([userLogin] ASC);

