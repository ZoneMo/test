.class final Lcom/tencent/mm/pluginsdk/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic fnw:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field final synthetic fnx:Lcom/tencent/mm/pluginsdk/ui/z;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/bf;->fnw:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/bf;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/bf;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/bf;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    .line 358
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
