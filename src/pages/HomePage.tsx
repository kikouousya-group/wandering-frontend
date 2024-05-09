import React from 'react';
import {Breadcrumb, Button, Card, Layout, Menu, Space, theme, Typography} from 'antd';


const { Header, Content, Footer } = Layout;
const { Title, Paragraph } = Typography;
const items = new Array(15).fill(null).map((_, index) => ({
    key: index + 1,
    label: `nav ${index + 1}`,
}));

const HomePage: React.FC = () => {
    return (
        <Card style={{ width: '100%' }}>
            <Typography>
                <Title>Wander Gallery</Title>
                <Paragraph>
                    一个强大的素材管理工具，具备自动标签、标签翻译、标签别名和置信度着色等功能。它支持复杂条件查询，能够创建满足特定条件的虚拟文件夹，并提供一键搜索和加入素材库的功能。此外，该应用还内置了E站等支持，可以查看和下载画廊，使用mysql作为数据库终端，支持大量素材的管理。
                </Paragraph>
            </Typography>
            <Button type="primary"

                    size="large">
                下载
            </Button>
        </Card>
    );
};

export default HomePage;