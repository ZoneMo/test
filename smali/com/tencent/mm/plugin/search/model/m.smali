.class final Lcom/tencent/mm/plugin/search/model/m;
.super Lcom/tencent/mm/plugin/search/model/af;
.source "SourceFile"


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;


# direct methods
.method private constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/m;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/af;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/mm/plugin/search/model/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/search/model/m;-><init>(Lcom/tencent/mm/plugin/search/model/b;)V

    return-void
.end method


# virtual methods
.method public final execute()Z
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/m;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->a(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/ap;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/plugin/search/model/a;->egz:[I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/search/model/ap;->a([I)V

    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    const-string v0, "DeleteAllFriends"

    return-object v0
.end method
