.class final Lcom/tencent/mm/plugin/search/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/e/ar;


# instance fields
.field final synthetic egV:Lcom/tencent/mm/plugin/search/model/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/b;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/tencent/mm/sdk/e/ao;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x1000a

    .line 993
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->e(Lcom/tencent/mm/plugin/search/model/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    if-eqz p3, :cond_1

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p3, Ljava/lang/String;

    .line 996
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1012
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 994
    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    .line 998
    :pswitch_1
    if-eqz p3, :cond_0

    .line 999
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/search/model/q;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {v1, v2, p3}, Lcom/tencent/mm/plugin/search/model/q;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_1

    .line 1003
    :pswitch_2
    if-nez p3, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/search/model/m;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/plugin/search/model/m;-><init>(Lcom/tencent/mm/plugin/search/model/b;B)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_1

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/b;->d(Lcom/tencent/mm/plugin/search/model/b;)Lcom/tencent/mm/plugin/search/model/y;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/search/model/o;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/d;->egV:Lcom/tencent/mm/plugin/search/model/b;

    invoke-direct {v1, v2, p3}, Lcom/tencent/mm/plugin/search/model/o;-><init>(Lcom/tencent/mm/plugin/search/model/b;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    goto :goto_1

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
