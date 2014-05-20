.class final Lcom/tencent/mm/ab/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic cwh:Lcom/tencent/mm/ab/r;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ab/r;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tencent/mm/ab/u;->cwh:Lcom/tencent/mm/ab/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "MicroMsg.SubCorePacakge"

    const-string v1, "dkregcode Update RegonCode here TRULY!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/tencent/mm/ab/q;->BK()Lcom/tencent/mm/ab/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ab/q;->update()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method
