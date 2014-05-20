.class final Lcom/tencent/mm/ui/friend/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/w;


# instance fields
.field final synthetic gHZ:Ljava/util/ArrayList;

.field final synthetic hcc:Lcom/tencent/mm/ui/friend/co;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/co;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/cp;->hcc:Lcom/tencent/mm/ui/friend/co;

    iput-object p2, p0, Lcom/tencent/mm/ui/friend/cp;->gHZ:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/cp;->hcc:Lcom/tencent/mm/ui/friend/co;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/cp;->gHZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/ac;

    iget-object v0, v0, Lcom/tencent/mm/modelfriend/ac;->field_googlegmail:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/friend/co;->a(Lcom/tencent/mm/ui/friend/co;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
