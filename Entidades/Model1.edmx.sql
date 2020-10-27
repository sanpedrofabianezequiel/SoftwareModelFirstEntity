
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/26/2020 22:22:54
-- Generated from EDMX file: C:\Users\sanpe\source\repos\SoftwareMFirst\Entidades\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SoftwareModelFirst];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Generos'
CREATE TABLE [dbo].[Generos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Editoriales'
CREATE TABLE [dbo].[Editoriales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Paises'
CREATE TABLE [dbo].[Paises] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Autores'
CREATE TABLE [dbo].[Autores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PaisId] int  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [FechaNacimiento] datetime  NOT NULL
);
GO

-- Creating table 'Libros'
CREATE TABLE [dbo].[Libros] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Titulo] nvarchar(max)  NOT NULL,
    [Edicion] datetime  NOT NULL,
    [GeneroId] int  NOT NULL,
    [EditorialId] int  NOT NULL
);
GO

-- Creating table 'LibroAutor'
CREATE TABLE [dbo].[LibroAutor] (
    [Libros_Id] int  NOT NULL,
    [Autores_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Generos'
ALTER TABLE [dbo].[Generos]
ADD CONSTRAINT [PK_Generos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Editoriales'
ALTER TABLE [dbo].[Editoriales]
ADD CONSTRAINT [PK_Editoriales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Paises'
ALTER TABLE [dbo].[Paises]
ADD CONSTRAINT [PK_Paises]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Autores'
ALTER TABLE [dbo].[Autores]
ADD CONSTRAINT [PK_Autores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [PK_Libros]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Libros_Id], [Autores_Id] in table 'LibroAutor'
ALTER TABLE [dbo].[LibroAutor]
ADD CONSTRAINT [PK_LibroAutor]
    PRIMARY KEY CLUSTERED ([Libros_Id], [Autores_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GeneroId] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [FK_GeneroLibro]
    FOREIGN KEY ([GeneroId])
    REFERENCES [dbo].[Generos]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_GeneroLibro'
CREATE INDEX [IX_FK_GeneroLibro]
ON [dbo].[Libros]
    ([GeneroId]);
GO

-- Creating foreign key on [EditorialId] in table 'Libros'
ALTER TABLE [dbo].[Libros]
ADD CONSTRAINT [FK_LibroEditorial]
    FOREIGN KEY ([EditorialId])
    REFERENCES [dbo].[Editoriales]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LibroEditorial'
CREATE INDEX [IX_FK_LibroEditorial]
ON [dbo].[Libros]
    ([EditorialId]);
GO

-- Creating foreign key on [Libros_Id] in table 'LibroAutor'
ALTER TABLE [dbo].[LibroAutor]
ADD CONSTRAINT [FK_LibroAutor_Libro]
    FOREIGN KEY ([Libros_Id])
    REFERENCES [dbo].[Libros]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Autores_Id] in table 'LibroAutor'
ALTER TABLE [dbo].[LibroAutor]
ADD CONSTRAINT [FK_LibroAutor_Autor]
    FOREIGN KEY ([Autores_Id])
    REFERENCES [dbo].[Autores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LibroAutor_Autor'
CREATE INDEX [IX_FK_LibroAutor_Autor]
ON [dbo].[LibroAutor]
    ([Autores_Id]);
GO

-- Creating foreign key on [PaisId] in table 'Autores'
ALTER TABLE [dbo].[Autores]
ADD CONSTRAINT [FK_PaisAutor]
    FOREIGN KEY ([PaisId])
    REFERENCES [dbo].[Paises]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaisAutor'
CREATE INDEX [IX_FK_PaisAutor]
ON [dbo].[Autores]
    ([PaisId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------