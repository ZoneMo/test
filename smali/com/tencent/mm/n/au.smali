.class final Lcom/tencent/mm/n/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmQ:Lcom/tencent/mm/n/ar;

.field final synthetic cmS:Lcom/tencent/mm/network/y;

.field final synthetic cmT:I

.field final synthetic cmU:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/n/ar;Lcom/tencent/mm/network/y;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/mm/n/au;->cmQ:Lcom/tencent/mm/n/ar;

    iput-object p2, p0, Lcom/tencent/mm/n/au;->cmS:Lcom/tencent/mm/network/y;

    iput p3, p0, Lcom/tencent/mm/n/au;->cmT:I

    iput p4, p0, Lcom/tencent/mm/n/au;->cmU:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 115
    new-instance v0, Lcom/tencent/mm/n/w;

    invoke-direct {v0}, Lcom/tencent/mm/n/w;-><init>()V

    .line 116
    new-instance v1, Lcom/tencent/mm/n/ar;

    iget-object v2, p0, Lcom/tencent/mm/n/au;->cmQ:Lcom/tencent/mm/n/ar;

    iget-object v2, v2, Lcom/tencent/mm/n/ar;->handler:Landroid/os/Handler;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/n/ar;-><init>(Lcom/tencent/mm/network/aj;Landroid/os/Handler;)V

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/n/au;->cmS:Lcom/tencent/mm/network/y;

    iget v2, p0, Lcom/tencent/mm/n/au;->cmT:I

    iget v3, p0, Lcom/tencent/mm/n/au;->cmU:I

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/network/y;->a(Lcom/tencent/mm/network/ak;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method
