.class public final Lcom/tencent/mapapi/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public VA:Lcom/tencent/mapapi/map/GeoPoint;

.field public XX:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/b/a;->name:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mapapi/b/a;->XX:Ljava/lang/String;

    return-void
.end method
