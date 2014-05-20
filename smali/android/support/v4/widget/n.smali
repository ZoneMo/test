.class public abstract Landroid/support/v4/widget/n;
.super Landroid/support/v4/widget/a;
.source "SourceFile"


# instance fields
.field private gc:I

.field private gd:I

.field private ge:Landroid/view/LayoutInflater;


# virtual methods
.method public final newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/widget/n;->ge:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/n;->gd:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Landroid/support/v4/widget/n;->ge:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v4/widget/n;->gc:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
