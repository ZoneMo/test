.class final Lcom/tencent/mm/ui/tools/jsapi/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/jsapi/c;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

.field final synthetic hpz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/s;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/s;->hpz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/s;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->g(Lcom/tencent/mm/ui/tools/jsapi/p;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/s;->hpz:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    return-void
.end method
