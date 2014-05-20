.class final Lcom/tencent/mm/ui/setting/eb;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hge:Lcom/tencent/mm/ab/l;

.field final synthetic hgf:I

.field final synthetic hgg:Lcom/tencent/mm/ui/setting/ea;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/ea;Lcom/tencent/mm/ab/l;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/eb;->hgg:Lcom/tencent/mm/ui/setting/ea;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/eb;->hge:Lcom/tencent/mm/ab/l;

    iput p3, p0, Lcom/tencent/mm/ui/setting/eb;->hgf:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/eb;->hge:Lcom/tencent/mm/ab/l;

    iget v1, p0, Lcom/tencent/mm/ui/setting/eb;->hgf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ab/l;->L(II)V

    .line 244
    return-void
.end method
