.class public final Lcom/tencent/map/location/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public Uc:I

.field public Ud:I

.field public Um:I

.field public Un:I

.field public Uo:I

.field public a:I

.field public b:I

.field public g:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 2

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/map/location/m;->a:I

    iput v0, p0, Lcom/tencent/map/location/m;->b:I

    iput v0, p0, Lcom/tencent/map/location/m;->Uc:I

    iput v0, p0, Lcom/tencent/map/location/m;->Ud:I

    iput v0, p0, Lcom/tencent/map/location/m;->Um:I

    iput v0, p0, Lcom/tencent/map/location/m;->Un:I

    iput v1, p0, Lcom/tencent/map/location/m;->g:I

    iput v1, p0, Lcom/tencent/map/location/m;->Uo:I

    iput p1, p0, Lcom/tencent/map/location/m;->a:I

    iput p2, p0, Lcom/tencent/map/location/m;->b:I

    iput p3, p0, Lcom/tencent/map/location/m;->Uc:I

    iput p4, p0, Lcom/tencent/map/location/m;->Ud:I

    iput p5, p0, Lcom/tencent/map/location/m;->Um:I

    iput p6, p0, Lcom/tencent/map/location/m;->Un:I

    iput p7, p0, Lcom/tencent/map/location/m;->g:I

    iput p8, p0, Lcom/tencent/map/location/m;->Uo:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/location/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method
