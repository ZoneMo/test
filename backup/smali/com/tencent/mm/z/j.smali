.class final Lcom/tencent/mm/z/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic cve:Lcom/tencent/mm/protocal/as;

.field final synthetic cvf:Lcom/tencent/mm/z/i;


# direct methods
.method constructor <init>(Lcom/tencent/mm/z/i;Lcom/tencent/mm/protocal/as;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tencent/mm/z/j;->cvf:Lcom/tencent/mm/z/i;

    iput-object p2, p0, Lcom/tencent/mm/z/j;->cve:Lcom/tencent/mm/protocal/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/tencent/mm/z/j;->cvf:Lcom/tencent/mm/z/i;

    invoke-static {v0}, Lcom/tencent/mm/z/i;->a(Lcom/tencent/mm/z/i;)Z

    .line 177
    new-instance v5, Lcom/tencent/mm/z/l;

    iget-object v0, p0, Lcom/tencent/mm/z/j;->cve:Lcom/tencent/mm/protocal/as;

    invoke-direct {v5, v0}, Lcom/tencent/mm/z/l;-><init>(Lcom/tencent/mm/protocal/as;)V

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/z/j;->cvf:Lcom/tencent/mm/z/i;

    const/4 v1, -0x1

    const-string v4, ""

    const/4 v6, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/z/i;->a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V

    .line 179
    return v2
.end method
