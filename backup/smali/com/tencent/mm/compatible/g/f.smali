.class final Lcom/tencent/mm/compatible/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic cfB:Lcom/tencent/mm/compatible/g/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/compatible/g/e;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/mm/compatible/g/f;->cfB:Lcom/tencent/mm/compatible/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/mm/compatible/g/f;->cfB:Lcom/tencent/mm/compatible/g/e;

    invoke-static {v0}, Lcom/tencent/mm/compatible/g/e;->a(Lcom/tencent/mm/compatible/g/e;)Lcom/tencent/mm/compatible/g/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/tencent/mm/compatible/g/f;->cfB:Lcom/tencent/mm/compatible/g/e;

    invoke-static {v0}, Lcom/tencent/mm/compatible/g/e;->a(Lcom/tencent/mm/compatible/g/e;)Lcom/tencent/mm/compatible/g/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/compatible/g/c;->bq(I)V

    .line 35
    :cond_0
    return-void
.end method
