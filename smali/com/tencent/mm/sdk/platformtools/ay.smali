.class public Lcom/tencent/mm/sdk/platformtools/ay;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static gdu:I


# instance fields
.field private final gdv:I

.field private final geb:Z

.field private gec:J

.field private final ged:Lcom/tencent/mm/sdk/platformtools/az;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/tencent/mm/sdk/platformtools/az;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gec:J

    .line 28
    iput-object p2, p0, Lcom/tencent/mm/sdk/platformtools/ay;->ged:Lcom/tencent/mm/sdk/platformtools/az;

    .line 29
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/ay;->azF()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    .line 30
    iput-boolean p3, p0, Lcom/tencent/mm/sdk/platformtools/ay;->geb:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/sdk/platformtools/az;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gec:J

    .line 21
    iput-object p1, p0, Lcom/tencent/mm/sdk/platformtools/ay;->ged:Lcom/tencent/mm/sdk/platformtools/az;

    .line 22
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/ay;->azF()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    .line 23
    iput-boolean p2, p0, Lcom/tencent/mm/sdk/platformtools/ay;->geb:Z

    .line 24
    return-void
.end method

.method private static azF()I
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/tencent/mm/sdk/platformtools/ay;->gdu:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/sdk/platformtools/ay;->gdu:I

    .line 37
    :cond_0
    sget v0, Lcom/tencent/mm/sdk/platformtools/ay;->gdu:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/sdk/platformtools/ay;->gdu:I

    return v0
.end method


# virtual methods
.method public final azG()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/sdk/platformtools/ay;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final azn()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/sdk/platformtools/ay;->removeMessages(I)V

    .line 72
    return-void
.end method

.method public final bO(J)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gec:J

    .line 66
    invoke-virtual {p0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 67
    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mm/sdk/platformtools/ay;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/tencent/mm/sdk/platformtools/ay;->azn()V

    .line 43
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 44
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->ged:Lcom/tencent/mm/sdk/platformtools/az;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->ged:Lcom/tencent/mm/sdk/platformtools/az;

    invoke-interface {v0}, Lcom/tencent/mm/sdk/platformtools/az;->ok()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-boolean v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->geb:Z

    if-eqz v0, :cond_0

    .line 58
    iget v0, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gdv:I

    iget-wide v1, p0, Lcom/tencent/mm/sdk/platformtools/ay;->gec:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/ay;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
