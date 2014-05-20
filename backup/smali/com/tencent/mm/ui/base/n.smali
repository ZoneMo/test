.class final Lcom/tencent/mm/ui/base/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gyv:Lcom/tencent/mm/ui/base/v;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/v;)V
    .locals 0
    .parameter

    .prologue
    .line 854
    iput-object p1, p0, Lcom/tencent/mm/ui/base/n;->gyv:Lcom/tencent/mm/ui/base/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 858
    iget-object v0, p0, Lcom/tencent/mm/ui/base/n;->gyv:Lcom/tencent/mm/ui/base/v;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/tencent/mm/ui/base/n;->gyv:Lcom/tencent/mm/ui/base/v;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/base/v;->bo(I)V

    .line 861
    :cond_0
    return-void
.end method
