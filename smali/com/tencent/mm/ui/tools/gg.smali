.class final Lcom/tencent/mm/ui/tools/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cQR:I

.field final synthetic hnx:Lcom/tencent/mm/ui/tools/ge;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/ge;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/gg;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iput p2, p0, Lcom/tencent/mm/ui/tools/gg;->cQR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/gg;->hnx:Lcom/tencent/mm/ui/tools/ge;

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/ge;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget v0, p0, Lcom/tencent/mm/ui/tools/gg;->cQR:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->setProgressBarIndeterminateVisibility(Z)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
