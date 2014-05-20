.class final Lcom/tencent/mm/pluginsdk/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic fnw:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

.field final synthetic fnx:Lcom/tencent/mm/pluginsdk/ui/z;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/be;->fnw:Lcom/tencent/mm/pluginsdk/ui/VoiceSearchLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/be;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/be;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/be;->fnx:Lcom/tencent/mm/pluginsdk/ui/z;

    .line 347
    :cond_0
    return-void
.end method
