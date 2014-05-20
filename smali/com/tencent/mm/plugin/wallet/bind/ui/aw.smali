.class final Lcom/tencent/mm/plugin/wallet/bind/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/bind/ui/aw;->eZA:Lcom/tencent/mm/plugin/wallet/bind/ui/WalletCardSelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p1, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    check-cast p2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;

    iget v0, p2, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    iget v1, p1, Lcom/tencent/mm/plugin/wallet/bind/model/ElementQuery;->eWV:I

    sub-int/2addr v0, v1

    return v0
.end method
