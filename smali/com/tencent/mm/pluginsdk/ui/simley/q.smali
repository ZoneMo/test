.class public final Lcom/tencent/mm/pluginsdk/ui/simley/q;
.super Lcom/tencent/mm/pluginsdk/ui/simley/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct/range {p0 .. p6}, Lcom/tencent/mm/pluginsdk/ui/simley/e;-><init>(Ljava/lang/String;ILcom/tencent/mm/pluginsdk/ui/simley/g;Lcom/tencent/mm/pluginsdk/ui/simley/k;Lcom/tencent/mm/ui/base/MMRadioImageButton;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/simley/q;->fsV:Lcom/tencent/mm/pluginsdk/ui/simley/k;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/k;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/simley/r;

    invoke-direct {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/r;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/pluginsdk/ui/simley/r;->setIndex(I)V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/pluginsdk/ui/simley/r;->a(Lcom/tencent/mm/pluginsdk/ui/simley/q;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/simley/r;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/r;->auI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/ui/simley/r;->auH()Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;

    invoke-direct {v0, v1}, Lcom/tencent/mm/pluginsdk/ui/SmileyGrid;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
