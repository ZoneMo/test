.class final Lcom/tencent/mm/ui/base/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/cd;


# instance fields
.field final synthetic gyt:Lcom/tencent/mm/ui/base/w;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/w;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/tencent/mm/ui/base/t;->gyt:Lcom/tencent/mm/ui/base/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/MenuItem;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/tencent/mm/ui/base/t;->gyt:Lcom/tencent/mm/ui/base/w;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/tencent/mm/ui/base/t;->gyt:Lcom/tencent/mm/ui/base/w;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lcom/tencent/mm/ui/base/w;->ai(II)V

    .line 709
    :cond_0
    return-void
.end method
