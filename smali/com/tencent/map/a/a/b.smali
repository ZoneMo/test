.class public Lcom/tencent/map/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private Td:I

.field private Te:I

.field private Tf:I

.field private Tg:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tencent/map/a/a/b;->Td:I

    iput v3, p0, Lcom/tencent/map/a/a/b;->Te:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/tencent/map/a/a/b;->Tf:I

    iput v2, p0, Lcom/tencent/map/a/a/b;->Tg:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/map/a/a/b;->Td:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/a/a/b;->Tg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/a/a/b;->Te:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/map/location/ab;->mi()V

    iput v2, p0, Lcom/tencent/map/a/a/b;->Td:I

    iput v2, p0, Lcom/tencent/map/a/a/b;->Tg:I

    iput v3, p0, Lcom/tencent/map/a/a/b;->Te:I

    iget v0, p0, Lcom/tencent/map/a/a/b;->Tg:I

    if-nez v0, :cond_0

    iput v3, p0, Lcom/tencent/map/a/a/b;->Te:I

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/map/a/a/b;->Tf:I

    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/map/a/a/d;)V
    .locals 0

    return-void
.end method

.method public a([BI)V
    .locals 0

    return-void
.end method

.method public aZ(I)V
    .locals 0

    return-void
.end method

.method public final lR()I
    .locals 1

    iget v0, p0, Lcom/tencent/map/a/a/b;->Td:I

    return v0
.end method

.method public final lS()I
    .locals 1

    iget v0, p0, Lcom/tencent/map/a/a/b;->Te:I

    return v0
.end method

.method public final lT()I
    .locals 1

    iget v0, p0, Lcom/tencent/map/a/a/b;->Tg:I

    return v0
.end method
