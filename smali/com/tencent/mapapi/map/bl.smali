.class final Lcom/tencent/mapapi/map/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UK:Ljava/lang/String;

.field public WU:Lcom/tencent/mapapi/map/be;

.field private Xm:Landroid/content/Context;

.field final synthetic Xn:Lcom/tencent/mapapi/map/bh;


# direct methods
.method public constructor <init>(Lcom/tencent/mapapi/map/bh;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/tencent/mapapi/map/bl;->Xn:Lcom/tencent/mapapi/map/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    .line 148
    iput-object p2, p0, Lcom/tencent/mapapi/map/bl;->Xm:Landroid/content/Context;

    .line 149
    iput-object p3, p0, Lcom/tencent/mapapi/map/bl;->UK:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/tencent/mapapi/map/be;

    iget-object v1, p0, Lcom/tencent/mapapi/map/bl;->Xm:Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/tencent/mapapi/map/be;-><init>(Lcom/tencent/mapapi/map/bh;)V

    iput-object v0, p0, Lcom/tencent/mapapi/map/bl;->WU:Lcom/tencent/mapapi/map/be;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/tencent/mapapi/map/bl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/mapapi/map/bl;->UK:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final mP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tencent/mapapi/map/bl;->UK:Ljava/lang/String;

    return-object v0
.end method

.method public final mQ()Landroid/content/Context;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/mapapi/map/bl;->Xm:Landroid/content/Context;

    return-object v0
.end method
