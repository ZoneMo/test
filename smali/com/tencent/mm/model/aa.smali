.class final Lcom/tencent/mm/model/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic chW:Lcom/tencent/mm/model/ac;

.field final synthetic chX:Landroid/os/Message;

.field final synthetic chY:Lcom/tencent/mm/model/z;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/z;Lcom/tencent/mm/model/ac;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/tencent/mm/model/aa;->chY:Lcom/tencent/mm/model/z;

    iput-object p2, p0, Lcom/tencent/mm/model/aa;->chW:Lcom/tencent/mm/model/ac;

    iput-object p3, p0, Lcom/tencent/mm/model/aa;->chX:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/mm/model/aa;->chY:Lcom/tencent/mm/model/z;

    iget-object v0, v0, Lcom/tencent/mm/model/z;->chV:Lcom/tencent/mm/model/y;

    iget-object v0, v0, Lcom/tencent/mm/model/y;->chU:Lcom/tencent/mm/model/ab;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/tencent/mm/model/aa;->chY:Lcom/tencent/mm/model/z;

    iget-object v0, v0, Lcom/tencent/mm/model/z;->chV:Lcom/tencent/mm/model/y;

    iget-object v0, v0, Lcom/tencent/mm/model/y;->chU:Lcom/tencent/mm/model/ab;

    iget-object v1, p0, Lcom/tencent/mm/model/aa;->chW:Lcom/tencent/mm/model/ac;

    iget-object v1, v1, Lcom/tencent/mm/model/ac;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/model/aa;->chX:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/model/ab;->m(Ljava/lang/String;I)V

    .line 139
    :cond_0
    return-void
.end method
