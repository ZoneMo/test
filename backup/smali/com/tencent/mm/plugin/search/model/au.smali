.class final Lcom/tencent/mm/plugin/search/model/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/n/m;


# instance fields
.field final synthetic eiw:Lcom/tencent/mm/plugin/search/model/at;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/model/at;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/model/au;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 146
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/au;->eiw:Lcom/tencent/mm/plugin/search/model/at;

    invoke-static {v0}, Lcom/tencent/mm/plugin/search/model/at;->a(Lcom/tencent/mm/plugin/search/model/at;)V

    .line 147
    return-void
.end method
