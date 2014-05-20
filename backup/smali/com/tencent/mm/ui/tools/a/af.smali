.class final Lcom/tencent/mm/ui/tools/a/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final hpY:Lcom/tencent/mm/ui/tools/a/e;

.field private final hqW:Ljava/lang/Boolean;

.field private final hqX:Landroid/os/HandlerThread;

.field hqY:J

.field hqZ:J

.field hra:J

.field hrb:J

.field hrc:J

.field hrd:J

.field hre:I

.field hrf:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/a/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqW:Ljava/lang/Boolean;

    .line 38
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/af;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Monet-Stats"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    .line 41
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance v0, Lcom/tencent/mm/ui/tools/a/ag;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/tencent/mm/ui/tools/a/ag;-><init>(Landroid/os/Looper;Lcom/tencent/mm/ui/tools/a/af;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/a/af;->hpY:Lcom/tencent/mm/ui/tools/a/e;

    .line 45
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    .line 46
    iput-object v1, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lcom/tencent/mm/ui/tools/a/ah;->s(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method final aOW()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    :cond_0
    return-void
.end method

.method final aOX()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    :cond_0
    return-void
.end method

.method final q(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/tools/a/af;->a(Landroid/graphics/Bitmap;I)V

    .line 52
    return-void
.end method

.method final r(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/tools/a/af;->a(Landroid/graphics/Bitmap;I)V

    .line 56
    return-void
.end method

.method final shutdown()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/a/af;->hqX:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 74
    :cond_0
    return-void
.end method
