.class final Lcom/tencent/mm/sdk/platformtools/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eIt:Landroid/view/View;

.field final synthetic gfw:Lcom/tencent/mm/sdk/platformtools/ck;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/platformtools/ck;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/cl;->gfw:Lcom/tencent/mm/sdk/platformtools/ck;

    iput-object p2, p0, Lcom/tencent/mm/sdk/platformtools/cl;->eIt:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/cl;->eIt:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1912
    return-void
.end method
