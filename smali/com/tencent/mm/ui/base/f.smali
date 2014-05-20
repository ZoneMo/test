.class public abstract Lcom/tencent/mm/ui/base/f;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private cYm:Landroid/view/View;

.field private dLe:Landroid/view/LayoutInflater;

.field private gmP:Landroid/view/View;

.field private gmR:Landroid/widget/LinearLayout;

.field private gyr:Lcom/tencent/mm/ui/base/b;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 33
    sget v0, Lcom/tencent/mm/o;->bID:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object v1, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    .line 73
    iput-object v1, p0, Lcom/tencent/mm/ui/base/f;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private vT(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/b;->vT(Ljava/lang/String;)V

    .line 101
    return-void
.end method


# virtual methods
.method public final SM()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 179
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/f;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 187
    if-eqz v1, :cond_0

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public final do(Z)V
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/b;->do(Z)V

    .line 117
    return-void
.end method

.method public final m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/b;->m(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final n(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/base/b;->n(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/base/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->dLe:Landroid/view/LayoutInflater;

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->dLe:Landroid/view/LayoutInflater;

    sget v1, Lcom/tencent/mm/k;->aWn:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->cYm:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->cYm:Landroid/view/View;

    sget v1, Lcom/tencent/mm/i;->aBB:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->gmR:Landroid/widget/LinearLayout;

    .line 44
    sget v0, Lcom/tencent/mm/k;->aXm:I

    .line 45
    if-eq v0, v3, :cond_0

    .line 46
    iget-object v1, p0, Lcom/tencent/mm/ui/base/f;->gmR:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/mm/ui/base/f;->dLe:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->dLe:Landroid/view/LayoutInflater;

    const v1, 0x7f0301a7

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->gmP:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gmR:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/f;->gmP:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 53
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->cYm:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/f;->setContentView(Landroid/view/View;)V

    .line 56
    new-instance v0, Lcom/tencent/mm/ui/base/b;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/b;-><init>(Lcom/tencent/mm/ui/base/f;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    .line 58
    sget v0, Lcom/tencent/mm/i;->aBs:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 59
    if-eqz v0, :cond_1

    .line 60
    new-instance v1, Lcom/tencent/mm/ui/base/g;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/base/g;-><init>(Lcom/tencent/mm/ui/base/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/base/f;->vT(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/f;->title:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->gyr:Lcom/tencent/mm/ui/base/b;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tencent/mm/ui/base/f;->title:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/base/f;->vT(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
