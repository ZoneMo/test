.class final Lcom/tencent/mm/w/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/w/ad;


# instance fields
.field final synthetic ctK:Lcom/tencent/mm/w/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/o;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tencent/mm/w/p;->ctK:Lcom/tencent/mm/w/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AS()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/mm/w/p;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->a(Lcom/tencent/mm/w/o;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/mm/w/p;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->a(Lcom/tencent/mm/w/o;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/w/y;

    .line 61
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/w/p;->ctK:Lcom/tencent/mm/w/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/w/o;->a(Lcom/tencent/mm/w/o;Z)Z

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/w/p;->ctK:Lcom/tencent/mm/w/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/w/o;->a(Lcom/tencent/mm/w/o;Z)Z

    goto :goto_0
.end method
