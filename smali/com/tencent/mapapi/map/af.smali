.class final Lcom/tencent/mapapi/map/af;
.super Lcom/tencent/mapapi/map/ae;
.source "SourceFile"


# instance fields
.field final synthetic Wk:Lcom/tencent/mapapi/map/ae;

.field final synthetic Wl:Lcom/tencent/mapapi/map/ae;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/ae;Lcom/tencent/mapapi/map/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/tencent/mapapi/map/af;->Wl:Lcom/tencent/mapapi/map/ae;

    iput-object p2, p0, Lcom/tencent/mapapi/map/af;->Wk:Lcom/tencent/mapapi/map/ae;

    invoke-direct {p0}, Lcom/tencent/mapapi/map/ae;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(I[I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 869
    iget-object v0, p0, Lcom/tencent/mapapi/map/af;->Wk:Lcom/tencent/mapapi/map/ae;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mapapi/map/ae;->a(I[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
