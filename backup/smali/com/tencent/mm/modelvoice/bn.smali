.class final Lcom/tencent/mm/modelvoice/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic cDi:Lcom/tencent/mm/modelvoice/bl;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bl;->d(Lcom/tencent/mm/modelvoice/bl;)Lcom/tencent/mm/modelvoice/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bl;->d(Lcom/tencent/mm/modelvoice/bl;)Lcom/tencent/mm/modelvoice/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/f;->pB()V

    .line 77
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/bl;->b(Lcom/tencent/mm/modelvoice/bl;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 78
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/bl;->a(Lcom/tencent/mm/modelvoice/bl;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "VoicePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setErrorListener File["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/bn;->cDi:Lcom/tencent/mm/modelvoice/bl;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/bl;->c(Lcom/tencent/mm/modelvoice/bl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ErrMsg["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
