.class public final Lcom/tencent/mm/ui/tools/dd;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field hlc:Ljava/lang/ref/WeakReference;

.field private hld:J

.field private hle:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter

    .prologue
    .line 1029
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1030
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/dd;->hlc:Ljava/lang/ref/WeakReference;

    .line 1031
    return-void
.end method

.method private b(IJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1084
    iput-wide p4, p0, Lcom/tencent/mm/ui/tools/dd;->hld:J

    .line 1085
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mm/ui/tools/dd;->sendEmptyMessageDelayed(IJ)Z

    .line 1086
    return-void
.end method


# virtual methods
.method public final aNv()V
    .locals 6

    .prologue
    .line 1094
    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/dd;->b(IJJ)V

    .line 1095
    return-void
.end method

.method public final aNw()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xf

    .line 1098
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/dd;->b(IJJ)V

    .line 1099
    return-void
.end method

.method public final aNx()V
    .locals 1

    .prologue
    .line 1108
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1109
    return-void
.end method

.method public final et(Z)V
    .locals 6
    .parameter

    .prologue
    .line 1089
    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/dd;->hle:Z

    .line 1090
    const/4 v1, 0x0

    const-wide/16 v2, 0x15e

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/tools/dd;->b(IJJ)V

    .line 1091
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1035
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1037
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1038
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dd;->hlc:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 1039
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/dd;->hlc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/MMGestureGallery;

    .line 1040
    if-eqz v0, :cond_2

    .line 1041
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    .line 1042
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->i(Lcom/tencent/mm/ui/tools/MMGestureGallery;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/dd;->hle:Z

    if-eqz v1, :cond_1

    .line 1044
    :cond_0
    const-string v1, "MicroMsg.MMGestureGallery"

    const-string v2, "single click over!"

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->f(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1046
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->c(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/de;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/de;-><init>(Lcom/tencent/mm/ui/tools/dd;Lcom/tencent/mm/ui/tools/MMGestureGallery;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1055
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->a(Lcom/tencent/mm/ui/tools/MMGestureGallery;I)I

    .line 1081
    :cond_2
    :goto_0
    return-void

    .line 1056
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_5

    .line 1057
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->z(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cu;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1058
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->z(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/cu;->vN()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1060
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->z(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/cu;->play()V

    .line 1061
    iget v0, p1, Landroid/os/Message;->what:I

    iget-wide v1, p0, Lcom/tencent/mm/ui/tools/dd;->hld:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/tools/dd;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1066
    :cond_4
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->A(Lcom/tencent/mm/ui/tools/MMGestureGallery;)V

    goto :goto_0

    .line 1068
    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1069
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->B(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cv;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1070
    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->c(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/tools/df;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/df;-><init>(Lcom/tencent/mm/ui/tools/dd;Lcom/tencent/mm/ui/tools/MMGestureGallery;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1104
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/dd;->removeMessages(I)V

    .line 1105
    return-void
.end method
