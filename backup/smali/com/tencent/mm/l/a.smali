.class public final Lcom/tencent/mm/l/a;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# static fields
.field public static ckf:I

.field public static ckg:I


# instance fields
.field private cjh:Lcom/tencent/mm/n/m;

.field private cke:Lcom/tencent/mm/n/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/tencent/mm/l/a;->ckf:I

    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/tencent/mm/l/a;->ckg:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 20
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 21
    new-instance v1, Lcom/tencent/mm/protocal/a/bk;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/bk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 22
    new-instance v1, Lcom/tencent/mm/protocal/a/bl;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/bl;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 23
    const-string v1, "/cgi-bin/micromsg-bin/bindemail"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 24
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 26
    invoke-virtual {v0, v2}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 27
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/l/a;->cke:Lcom/tencent/mm/n/a;

    .line 29
    iget-object v0, p0, Lcom/tencent/mm/l/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/bk;

    .line 30
    iput p1, v0, Lcom/tencent/mm/protocal/a/bk;->fBj:I

    .line 31
    iput-object p2, v0, Lcom/tencent/mm/protocal/a/bk;->fBk:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p2, p0, Lcom/tencent/mm/l/a;->cjh:Lcom/tencent/mm/n/m;

    .line 37
    iget-object v0, p0, Lcom/tencent/mm/l/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/l/a;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/mm/l/a;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 58
    return-void
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x100

    return v0
.end method

.method public final vI()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/mm/l/a;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/bk;

    iget v0, v0, Lcom/tencent/mm/protocal/a/bk;->fBj:I

    return v0
.end method
