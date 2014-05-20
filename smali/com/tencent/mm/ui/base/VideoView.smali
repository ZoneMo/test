.class public Lcom/tencent/mm/ui/base/VideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private cCL:Landroid/media/MediaPlayer$OnCompletionListener;

.field private cCM:Landroid/media/MediaPlayer$OnErrorListener;

.field private gFd:Ljava/lang/String;

.field private gFe:Landroid/view/SurfaceHolder;

.field private gFf:Landroid/media/MediaPlayer;

.field private gFg:Z

.field private gFh:I

.field private gFi:I

.field private gFj:Landroid/widget/MediaController;

.field private gFk:Landroid/media/MediaPlayer$OnPreparedListener;

.field private gFl:I

.field private gFm:Z

.field private gFn:I

.field gFo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field gFp:Landroid/media/MediaPlayer$OnPreparedListener;

.field private gFq:Landroid/media/MediaPlayer$OnCompletionListener;

.field private gFr:Landroid/media/MediaPlayer$OnErrorListener;

.field private gFs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field gFt:Landroid/view/SurfaceHolder$Callback;

.field private mContext:Landroid/content/Context;

.field private oW:I

.field private uN:I

.field private uO:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFe:Landroid/view/SurfaceHolder;

    .line 34
    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    .line 250
    new-instance v0, Lcom/tencent/mm/ui/base/el;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/el;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 264
    new-instance v0, Lcom/tencent/mm/ui/base/em;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/em;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFp:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 323
    new-instance v0, Lcom/tencent/mm/ui/base/en;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/en;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFq:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 335
    new-instance v0, Lcom/tencent/mm/ui/base/eo;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/eo;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFr:Landroid/media/MediaPlayer$OnErrorListener;

    .line 372
    new-instance v0, Lcom/tencent/mm/ui/base/ep;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/ep;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 409
    new-instance v0, Lcom/tencent/mm/ui/base/eq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/eq;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFt:Landroid/view/SurfaceHolder$Callback;

    .line 95
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->mContext:Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHW()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/base/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHW()V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFe:Landroid/view/SurfaceHolder;

    .line 34
    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    .line 250
    new-instance v0, Lcom/tencent/mm/ui/base/el;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/el;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 264
    new-instance v0, Lcom/tencent/mm/ui/base/em;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/em;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFp:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 323
    new-instance v0, Lcom/tencent/mm/ui/base/en;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/en;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFq:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 335
    new-instance v0, Lcom/tencent/mm/ui/base/eo;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/eo;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFr:Landroid/media/MediaPlayer$OnErrorListener;

    .line 372
    new-instance v0, Lcom/tencent/mm/ui/base/ep;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/ep;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 409
    new-instance v0, Lcom/tencent/mm/ui/base/eq;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/base/eq;-><init>(Lcom/tencent/mm/ui/base/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFt:Landroid/view/SurfaceHolder$Callback;

    .line 107
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHW()V

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/VideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/base/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFe:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private aHW()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    .line 153
    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    .line 154
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFt:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 155
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/base/VideoView;->setFocusable(Z)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/base/VideoView;->setFocusableInTouchMode(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->requestFocus()Z

    .line 159
    return-void
.end method

.method private aHY()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFd:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFe:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 202
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    .line 206
    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFp:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFo:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    .line 210
    const-string v0, "MicroMsg.VideoView"

    const-string v1, "reset duration to -1 in openVideo"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFq:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFr:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFs:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFl:I

    .line 216
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFe:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 218
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 219
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 220
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 221
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    .line 222
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    .line 223
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-object v0, p0

    .line 223
    goto :goto_1

    .line 229
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private aHZ()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/base/VideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/VideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFl:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/base/VideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/VideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->uN:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/base/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFk:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/base/VideoView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->uO:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/base/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/base/VideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/base/VideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/base/VideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->uN:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->uO:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFn:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/base/VideoView;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFn:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/base/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->cCL:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/base/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->cCM:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/base/VideoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/base/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHY()V

    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/base/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public final aHV()V
    .locals 8

    .prologue
    const/high16 v6, 0x3f80

    .line 58
    iget v4, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    .line 59
    iget v2, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    .line 61
    const-string v0, "MicroMsg.VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "video size before:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "MicroMsg.VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "layout size before:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getWidth()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getHeight()I

    move-result v0

    .line 66
    if-gtz v1, :cond_2

    move v3, v4

    .line 69
    :goto_0
    if-gtz v0, :cond_1

    move v1, v2

    .line 73
    :goto_1
    int-to-float v0, v3

    mul-float/2addr v0, v6

    int-to-float v5, v4

    div-float v5, v0, v5

    .line 74
    int-to-float v0, v1

    mul-float/2addr v0, v6

    int-to-float v6, v2

    div-float v6, v0, v6

    .line 76
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    cmpl-float v7, v5, v6

    if-lez v7, :cond_0

    .line 78
    int-to-float v2, v4

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 79
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 85
    :goto_2
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/base/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->invalidate()V

    .line 89
    const-string v0, "MicroMsg.VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video size after:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "MicroMsg.VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout size after:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 81
    :cond_0
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 82
    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v3, v1

    goto/16 :goto_0
.end method

.method public final aHX()I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFl:I

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 533
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_1

    .line 518
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    if-lez v0, :cond_0

    .line 519
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    .line 525
    :goto_0
    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    .line 522
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    goto :goto_0

    .line 524
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    .line 525
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->oW:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 550
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 467
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->pause()V

    .line 470
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 475
    :goto_0
    const/4 v0, 0x1

    .line 484
    :goto_1
    return v0

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->start()V

    .line 473
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 476
    :cond_2
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->pause()V

    .line 478
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 484
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHZ()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFh:I

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/base/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 115
    iget v1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFi:I

    invoke-static {v1, p2}, Lcom/tencent/mm/ui/base/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/base/VideoView;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHZ()V

    .line 452
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFj:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHZ()V

    .line 460
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 512
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    .line 513
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    iput p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFn:I

    goto :goto_0
.end method

.method public final setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->cCL:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 397
    return-void
.end method

.method public final setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->cCM:Landroid/media/MediaPlayer$OnErrorListener;

    .line 407
    return-void
.end method

.method public final setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFk:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 387
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFg:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    goto :goto_0
.end method

.method public final stopPlayback()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFf:Landroid/media/MediaPlayer;

    .line 180
    :cond_0
    return-void
.end method

.method public final wm(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-object p1, p0, Lcom/tencent/mm/ui/base/VideoView;->gFd:Ljava/lang/String;

    .line 167
    iput-boolean v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFm:Z

    .line 168
    iput v0, p0, Lcom/tencent/mm/ui/base/VideoView;->gFn:I

    .line 169
    invoke-direct {p0}, Lcom/tencent/mm/ui/base/VideoView;->aHY()V

    .line 170
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->requestLayout()V

    .line 171
    invoke-virtual {p0}, Lcom/tencent/mm/ui/base/VideoView;->invalidate()V

    .line 172
    return-void
.end method
