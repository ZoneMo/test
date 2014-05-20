.class public Lcom/tencent/mm/protocal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private fxU:J

.field private fxV:I

.field private fxW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/q;->fxU:J

    .line 172
    const/16 v0, -0x63

    iput v0, p0, Lcom/tencent/mm/protocal/q;->fxV:I

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/q;->fxW:Ljava/lang/String;

    .line 174
    return-void
.end method


# virtual methods
.method public awI()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public final bG(J)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/tencent/mm/protocal/q;->fxU:J

    .line 207
    return-void
.end method

.method public final cS(I)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/tencent/mm/protocal/q;->fxV:I

    .line 178
    return-void
.end method

.method public final ez(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/tencent/mm/protocal/q;->fxW:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public getCmdId()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public final xl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/mm/protocal/q;->fxW:Ljava/lang/String;

    return-object v0
.end method

.method public final xm()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/tencent/mm/protocal/q;->fxV:I

    return v0
.end method
