.class final Lcom/tencent/mm/plugin/search/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/search/model/ad;


# instance fields
.field final synthetic eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiE:Lcom/tencent/mm/plugin/search/model/af;

    .line 319
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iput-object p1, v0, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiH:Ljava/util/List;

    .line 322
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->a(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)Lcom/tencent/mm/plugin/search/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v1, v1, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiG:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v2, v2, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiF:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/ui/d;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    iget-object v3, v3, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->eiH:Ljava/util/List;

    const/4 v5, 0x0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/plugin/search/ui/e;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Z)V

    .line 323
    return-void
.end method
