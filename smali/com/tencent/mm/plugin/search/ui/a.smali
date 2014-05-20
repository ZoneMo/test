.class final Lcom/tencent/mm/plugin/search/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/search/ui/SearchContactUI;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tencent/mm/plugin/search/ui/a;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/ui/a;->eiK:Lcom/tencent/mm/plugin/search/ui/SearchContactUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/ui/SearchContactUI;->finish()V

    .line 175
    return-void
.end method
