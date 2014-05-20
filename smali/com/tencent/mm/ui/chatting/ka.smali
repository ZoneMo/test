.class final Lcom/tencent/mm/ui/chatting/ka;
.super Lcom/tencent/mm/ui/chatting/cf;
.source "SourceFile"


# instance fields
.field dUe:Landroid/widget/LinearLayout;

.field gQt:Lcom/tencent/mm/ui/chatting/ChattingItemDyeingTemplateTopView;

.field gQu:Lcom/tencent/mm/ui/chatting/kb;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/cf;-><init>(I)V

    .line 140
    new-instance v0, Lcom/tencent/mm/ui/chatting/kb;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/kb;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ka;->gQu:Lcom/tencent/mm/ui/chatting/kb;

    .line 144
    return-void
.end method
