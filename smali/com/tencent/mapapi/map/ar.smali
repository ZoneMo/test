.class final Lcom/tencent/mapapi/map/ar;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field final synthetic Wt:Lcom/tencent/mapapi/map/aq;


# direct methods
.method constructor <init>(Lcom/tencent/mapapi/map/aq;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/mapapi/map/ar;->Wt:Lcom/tencent/mapapi/map/aq;

    const/high16 v0, 0x3f40

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/tencent/mapapi/map/ar;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mapapi/map/ar;->Wt:Lcom/tencent/mapapi/map/aq;

    invoke-static {v1}, Lcom/tencent/mapapi/map/aq;->a(Lcom/tencent/mapapi/map/aq;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
